//
//  OnBoardingViewController.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 04/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{
            scrollView.delegate = self
        }
    }
    @IBOutlet weak var pageControl: UIPageControl!
    var slides:[Slide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
        
    }
    
    func createSlides() -> [Slide]{
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.ImageSlide.image = UIImage(named: "onboard1")
        slide1.TitleSlide.text = "Find Your Game"
        slide1.DescSlide.text = "Play games based on your play time"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.ImageSlide.image = UIImage(named: "onboard2")
        slide2.TitleSlide.text = "Don't Lose Track of Time"
        slide2.DescSlide.text = "Set your schedule and get personalised reminder"
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.ImageSlide.image = UIImage(named: "onboard3")
        slide3.TitleSlide.text = "Share your achivement"
        slide3.DescSlide.text = "Enjoy your game and share it with others"

        return [slide1, slide2, slide3]
        
        
    }
    
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)

    }

    
}
