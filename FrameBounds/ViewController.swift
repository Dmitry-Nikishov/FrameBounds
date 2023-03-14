//
//  ViewController.swift
//  FrameBounds
//
//  Created by Дмитрий Никишов on 13.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @objc
    private func frameXSliderValueChangedHandler() {
        imageView.frame.origin.x = CGFloat(frameXSlider.value)
        updateLabels()
    }
    
    @objc
    private func frameYSliderValueChangedHandler() {
        imageView.frame.origin.y = CGFloat(frameYSlider.value)
        updateLabels()
    }

    @objc
    private func frameWidthSliderValueChangedHandler() {
        imageView.frame.size.height = CGFloat(frameHeightSlider.value)
        
//        imageView.frame = CGRectMake(
//                     imageView.frame.origin.x,
//                     imageView.frame.origin.y,
//                     CGFloat(frameWidthSlider.value),
//                     imageView.frame.height);
        updateLabels()
    }

    @objc
    private func frameHeightSliderValueChangedHandler() {
        imageView.frame.size.height = CGFloat(frameHeightSlider.value)
        updateLabels()
    }

    @objc
    private func boundsXSliderValueChangedHandler() {
        imageView.bounds.origin.x = CGFloat(boundsXSlider.value)
        updateLabels()
    }
    
    @objc
    private func boundsYSliderValueChangedHandler() {
        imageView.bounds.origin.y = CGFloat(boundsYSlider.value)
        updateLabels()
    }

    @objc
    private func boundsWidthSliderValueChangedHandler() {
        imageView.bounds.size.width = CGFloat(boundsWidthSlider.value)
        updateLabels()
    }

    @objc
    private func boundsHeightSliderValueChangedHandler() {
        imageView.frame.size.height = CGFloat(boundsHeightSlider.value)
        updateLabels()
    }
    
    @objc
    private func centerXSliderChangedHandler() {
        imageView.center.x = CGFloat(centerXSlider.value)
        updateLabels()
    }
    
    @objc
    private func centerYSliderChangedHandler() {
        imageView.center.y = CGFloat(centerYSlider.value)
        updateLabels()
    }
    
    @objc
    private func rotationSliderChangedHandler() {
        let rotation = CGAffineTransform(rotationAngle: CGFloat(rotationSlider.value))
        imageView.transform = rotation
        updateLabels()
    }
    
    private let xPositionStart = 0
    private let xPositionFinish = 200
    
    private let yPositionStart = 0
    private let yPositionFinish = 200
    
    private let widthStart = 100
    private let widthFinish = 200
    
    private let heightStart = 100
    private let heightFinish = 200
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView(frame: CGRect(
            x: xPositionStart,
            y: yPositionStart,
            width: widthStart,
            height: heightStart
        ))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "0")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private lazy var frameXSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = Float(xPositionStart)
        view.maximumValue = Float(xPositionFinish)
        view.addTarget(self, action: #selector(frameXSliderValueChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var frameXLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "frame x = "
        view.textColor = .black
        return view
    }()
    
    private lazy var frameYSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = Float(yPositionStart)
        view.maximumValue = Float(yPositionFinish)
        view.addTarget(self, action: #selector(frameYSliderValueChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var frameYLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "frame y = "
        view.textColor = .black
        return view
    }()

    private lazy var frameWidthSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = Float(widthStart)
        view.maximumValue = Float(widthFinish)
        view.addTarget(self, action: #selector(frameWidthSliderValueChangedHandler), for: .valueChanged)

        return view
    }()
    
    private lazy var frameWidthLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "frame width = "
        view.textColor = .black
        return view
    }()

    private lazy var frameHeightSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = Float(heightStart)
        view.maximumValue = Float(heightFinish)
        view.addTarget(self, action: #selector(frameHeightSliderValueChangedHandler), for: .valueChanged)

        return view
    }()
    
    private lazy var frameHeightLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "frame height = "
        view.textColor = .black
        return view
    }()

    //----------- bounds ----------------
    private lazy var boundsXSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(boundsXSliderValueChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var boundsXLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "bounds x = "
        view.textColor = .black
        return view
    }()
    
    private lazy var boundsYSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(boundsYSliderValueChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var boundsYLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "bounds y = "
        view.textColor = .black
        return view
    }()

    private lazy var boundsWidthSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(boundsWidthSliderValueChangedHandler), for: .valueChanged)

        return view
    }()
    
    private lazy var boundsWidthLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "bounds width = "
        view.textColor = .black
        return view
    }()

    private lazy var boundsHeightSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(boundsHeightSliderValueChangedHandler), for: .valueChanged)

        return view
    }()
    
    private lazy var boundsHeightLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "bounds height = "
        view.textColor = .black
        return view
    }()

    private lazy var centerXSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(centerXSliderChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var centerXLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "center x = "
        view.textColor = .black
        return view
    }()

    private lazy var centerYSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 100
        view.addTarget(self, action: #selector(centerYSliderChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var centerYLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "center y = "
        view.textColor = .black
        return view
    }()

    private lazy var rotationSlider: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 90
        view.addTarget(self, action: #selector(rotationSliderChangedHandler), for: .valueChanged)
        return view
    }()
    
    private lazy var rotationLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "rotation = "
        view.textColor = .black
        return view
    }()

    
    private lazy var controlArea: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private func setupControlArea() {
        controlArea.addSubview(frameXSlider)
        controlArea.addSubview(frameXLabel)
        controlArea.addSubview(frameYSlider)
        controlArea.addSubview(frameYLabel)
        controlArea.addSubview(frameWidthSlider)
        controlArea.addSubview(frameWidthLabel)
        controlArea.addSubview(frameHeightSlider)
        controlArea.addSubview(frameHeightLabel)
        
        controlArea.addSubview(boundsXSlider)
        controlArea.addSubview(boundsXLabel)
        controlArea.addSubview(boundsYSlider)
        controlArea.addSubview(boundsYLabel)
        controlArea.addSubview(boundsWidthSlider)
        controlArea.addSubview(boundsWidthLabel)
        controlArea.addSubview(boundsHeightSlider)
        controlArea.addSubview(boundsHeightLabel)

        controlArea.addSubview(centerXLabel)
        controlArea.addSubview(centerYLabel)
        controlArea.addSubview(centerXSlider)
        controlArea.addSubview(centerYSlider)
        
        controlArea.addSubview(rotationSlider)
        controlArea.addSubview(rotationLabel)
        
        let halfHeight = view.frame.height/2
        let numberOfControlItems: CGFloat = 12
        
        let constraints = [
            frameXSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            frameXSlider.topAnchor.constraint(equalTo: controlArea.topAnchor),
            frameXSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            frameXSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            frameXLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            frameXLabel.leadingAnchor.constraint(equalTo: frameXSlider.trailingAnchor, constant: 10),
            frameXLabel.topAnchor.constraint(equalTo: controlArea.topAnchor),
            frameXLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            frameYSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            frameYSlider.topAnchor.constraint(equalTo: frameXSlider.bottomAnchor),
            frameYSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            frameYSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            frameYLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            frameYLabel.leadingAnchor.constraint(equalTo: frameYSlider.trailingAnchor, constant: 10),
            frameYLabel.topAnchor.constraint(equalTo: frameYSlider.topAnchor),
            frameYLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            frameWidthSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            frameWidthSlider.topAnchor.constraint(equalTo: frameYSlider.bottomAnchor),
            frameWidthSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            frameWidthSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            frameWidthLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            frameWidthLabel.leadingAnchor.constraint(equalTo: frameWidthSlider.trailingAnchor, constant: 10),
            frameWidthLabel.topAnchor.constraint(equalTo: frameWidthSlider.topAnchor),
            frameWidthLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            frameHeightSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            frameHeightSlider.topAnchor.constraint(equalTo: frameWidthSlider.bottomAnchor),
            frameHeightSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            frameHeightSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            frameHeightLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            frameHeightLabel.leadingAnchor.constraint(equalTo: frameHeightSlider.trailingAnchor, constant: 10),
            frameHeightLabel.topAnchor.constraint(equalTo: frameHeightSlider.topAnchor),
            frameHeightLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            //------ bounds ----
            boundsXSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            boundsXSlider.topAnchor.constraint(equalTo: frameHeightSlider.bottomAnchor),
            boundsXSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            boundsXSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            boundsXLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            boundsXLabel.leadingAnchor.constraint(equalTo: boundsXSlider.trailingAnchor, constant: 10),
            boundsXLabel.topAnchor.constraint(equalTo: boundsXSlider.topAnchor),
            boundsXLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            boundsYSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            boundsYSlider.topAnchor.constraint(equalTo: boundsXSlider.bottomAnchor),
            boundsYSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            boundsYSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            boundsYLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            boundsYLabel.leadingAnchor.constraint(equalTo: boundsYSlider.trailingAnchor, constant: 10),
            boundsYLabel.topAnchor.constraint(equalTo: boundsYSlider.topAnchor),
            boundsYLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            boundsWidthSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            boundsWidthSlider.topAnchor.constraint(equalTo: boundsYSlider.bottomAnchor),
            boundsWidthSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            boundsWidthSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            boundsWidthLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            boundsWidthLabel.leadingAnchor.constraint(equalTo: boundsWidthSlider.trailingAnchor, constant: 10),
            boundsWidthLabel.topAnchor.constraint(equalTo: boundsWidthSlider.topAnchor),
            boundsWidthLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            boundsHeightSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            boundsHeightSlider.topAnchor.constraint(equalTo: boundsWidthSlider.bottomAnchor),
            boundsHeightSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            boundsHeightSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            boundsHeightLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            boundsHeightLabel.leadingAnchor.constraint(equalTo: boundsHeightSlider.trailingAnchor, constant: 10),
            boundsHeightLabel.topAnchor.constraint(equalTo: boundsHeightSlider.topAnchor),
            boundsHeightLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            centerXSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            centerXSlider.topAnchor.constraint(equalTo: boundsHeightSlider.bottomAnchor),
            centerXSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            centerXSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            centerXLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            centerXLabel.leadingAnchor.constraint(equalTo: centerXSlider.trailingAnchor, constant: 10),
            centerXLabel.topAnchor.constraint(equalTo: centerXSlider.topAnchor),
            centerXLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            centerYSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            centerYSlider.topAnchor.constraint(equalTo: centerXSlider.bottomAnchor),
            centerYSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            centerYSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            centerYLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            centerYLabel.leadingAnchor.constraint(equalTo: centerYSlider.trailingAnchor, constant: 10),
            centerYLabel.topAnchor.constraint(equalTo: centerYSlider.topAnchor),
            centerYLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

            rotationSlider.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            rotationSlider.topAnchor.constraint(equalTo: centerYSlider.bottomAnchor),
            rotationSlider.widthAnchor.constraint(equalToConstant: view.frame.width*0.4),
            rotationSlider.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),
            
            rotationLabel.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            rotationLabel.leadingAnchor.constraint(equalTo: rotationSlider.trailingAnchor, constant: 10),
            rotationLabel.topAnchor.constraint(equalTo: rotationSlider.topAnchor),
            rotationLabel.heightAnchor.constraint(equalToConstant: halfHeight/numberOfControlItems),

        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(controlArea)
        
        let safeArea = view.layoutMarginsGuide
        
        let constraints = [
            controlArea.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            controlArea.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            controlArea.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            controlArea.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: view.frame.height*0.4)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        setupControlArea()
    }

    
    private func updateLabels() {
        frameXLabel.text = "frame x = \(Int(imageView.frame.origin.x))"
        frameYLabel.text = "frame y = \(Int(imageView.frame.origin.y))"
        frameWidthLabel.text = "frame width = \(Int(imageView.frame.width))"
        frameHeightLabel.text = "frame height = \(Int(imageView.frame.height))"
        boundsXLabel.text = "bounds x = \(Int(imageView.bounds.origin.x))"
        boundsYLabel.text = "bounds y = \(Int(imageView.bounds.origin.y))"
        boundsWidthLabel.text = "bounds width = \(Int(imageView.bounds.width))"
        boundsHeightLabel.text = "bounds height = \(Int(imageView.bounds.height))"
        centerXLabel.text = "center x = \(Int(imageView.center.x))"
        centerYLabel.text = "center y = \(Int(imageView.center.y))"
        rotationLabel.text = "rotation = \((rotationSlider.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
        
        updateLabels()
    }


}

