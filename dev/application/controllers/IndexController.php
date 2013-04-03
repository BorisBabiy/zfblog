<?php

class IndexController extends Application_Controller_Action
{

    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {
        $ApplicationModelPostMapper = new Application_Model_PostsMapper();
        $this->view->featuredStoryList = $ApplicationModelPostMapper->fetchFeaturedStory();
        $this->view->newsList = $ApplicationModelPostMapper->fetchNews();
    }
}

