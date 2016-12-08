<?php

abstract class TestCase extends Illuminate\Foundation\Testing\TestCase
{
    /**
     * The base URL to use while testing the application.
     *
     * @var string
     */
    protected $baseUrl = 'http://local.catapultian.org/';

    /**
     * Creates the application.
     *
     * @return \Illuminate\Foundation\Application
     */
    public function createApplication()
    {
        $app = require __DIR__.'/../bootstrap/app.php';

        $app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

        return $app;
    }


    /**
     * A basic functional test view homepage.
     *
     * @return void
     */

    public function testHomepage()
    {
        $this->visit('/')
             ->see('Home');
        $this->assertResponseStatus(200);      
    }
 
    /**
     * A basic functional test user registration.
     *
     * @return void
     */

    public function testNewUserRegistration()
    {
        $this->visit('/register')
             ->submitForm('Register', ['name' => 'Shamim Unit Test','email' => 'shamim7777+'.time().'@gmail.com', 'password' => '123456', 'password_confirmation' => '123456'])
             ->see('Welcome!') ;
    }
 
    /**
     * A basic functional test user login.
     *
     * @return void
     */  

    public function test_login_form()
    {
        $this->visit('/login')
             ->submitForm('Login', ['email' => 'shamim7777+1@gmail.com', 'password' => '123456'])
             ->see('Welcome!') ;
    }

    /**
     * A basic functional test registraion with duplicate email.
     *
     * @return void
     */

    public function testNewUserRegistrationWithExistingEmail()
    {
        $this->visit('/register')
             ->submitForm('Register', ['name' => 'Shamim Unit Test','email' => 'shamim7777+1@gmail.com', 'password' => '123456', 'password_confirmation' => '123456'])
             ->see('The email has already been taken.') ;
    }

    /**
     * A basic functional test: Add new blog post
     *
     * @return void
     */

    public function testNewPost()
    {
       $this->visit('/login')
             ->submitForm('Login', ['email' => 'shamim7777+1@gmail.com', 'password' => '123456'])
             ->see('Welcome!')
             ->click("Add new post")
             ->see('Add New Post')
             ->submitForm('Publish', ['title' => 'Unit test post title '.time().' ', 'category' => 'PHP','body'=>"This is unit test blog body .".time()])
             ->seeJsonEquals(array(
                 'status' => true,'result'=> true,  'message' => "Post successfully inserted.", 'classname'=>'success'
                ))
             ;
    }

    /**
     * A basic functional test: Edit blog post
     *
     * @return void
     */

    public function testEditPost()
    {
       $this->visit('/login')
             ->submitForm('Login', ['email' => 'shamim7777+1@gmail.com', 'password' => '123456'])
             ->see('Welcome!')
             ->visit('/edit/unit-test-post-title-73')
             ->see('Edit Post')
             ->submitForm('Update', ['title' => 'Unit test edit post title '.rand(2,99).' ', 'category' => 'PHP','body'=>"This is unit test blog body .".time()])
             ->see('Post updated successfully')
             ;

    }

    /**
     * A basic functional test: Delete blog post
     *
     * @return void
     */

    public function testDeletePost()
    {
       $this->visit('/login')
             ->submitForm('Login', ['email' => 'shamim7777+1@gmail.com', 'password' => '123456'])
             ->see('Welcome!')
             ->visit('/edit/unit-test-post-title-1481186079')
             ->see('Edit Post')
             ->click('delete-post-btn')
             ->see('Post deleted Successfully')
             ;
    }
}
