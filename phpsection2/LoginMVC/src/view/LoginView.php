<?php

namespace view;

require_once("src/view/MessageView.php");

class LoginView {
    private $model;
    private $messages;

    public function __construct(\model\LoginModel $model)
    {
        $this->model = $model;
        $this->messages = new \view\MessageView();
    }

    // Checks if the user has pressed the login button.
    public function onClickLogin() {
        if(isset($_POST["loginButton"]))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    // Checks if the user has pressed the logout button.
    public function onClickLogout() {
        if(isset($_GET['logout']))
        {
          return true;
        }
        else
        {
            return false;
        }
    }

    // Function for retrieving current time, date and year in Swedish.
    public function getTime() {
        setlocale(LC_ALL,"sv_SE.UTF8");
        return strftime("%A,  %d %B  %Y. The time is [%X].");
    }

    public function sessionCheck() {
        if ($_SESSION["httpAgent"] != $_SERVER["HTTP_USER_AGENT"])
        {
            return false;
        }

        return true;
    }

    // Renders the page according to the user being logged in or not.
    public function showPage() {

        if($this->model->getLoginStatus() === false || $this->sessionCheck() === false)
        {
            $username = isset($_POST["username"]) ? $_POST["username"] : "";
            return "
            <h1 style='color:crimson;'>PHP Login</h1>
            <h3>Not logged in</h3>
            <form action='?login' method='post' name='loginForm'>
                <fieldset>
                    <legend>Login - Enter username and password</legend><p>"
                    . $this->messages->load() . "</p>
                    <label><strong>User Name: </strong></label>
                    <input type='text' name='username' value='$username' style='border-radius: 20px;'/>
                    <label><strong>Password: </strong></label>
                    <input type='password' name='password' value='' style='border-radius: 20px;'/>
                    <label><strong>Keep me loggedin: </strong></label>
                    <input type='checkbox' name='stayLoggedIn' />
                    <input type='submit' value='Login' name='loginButton' style='border-radius: 20px; color: crimson;'/>
                 </fieldset>
            </form>
            <p>" . $this->getTime() . "</p>";
        }
        else
        {
            return "<h1>Welcome!</h1>
                    <h3>" . $this->model->retriveUsername() . " is logged in</h3>
                    <p>" . $this->messages->load() . "</p>
                    <a href='?logout'>Logout</a>
                    <p>" . $this->getTime() . "</p>";
        }
    }
}