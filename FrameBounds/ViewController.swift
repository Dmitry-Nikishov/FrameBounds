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
        imageView.frame.size.width = CGFloat(frameWidthSlider.value)
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
    
    private func deg2rad(_ number: Float) -> Float {
        return number * .pi / 180
    }
    
    @objc
    private func rotationSliderChangedHandler() {
        let rotation = CGAffineTransform(rotationAngle: CGFloat(deg2rad(rotationSlider.value)))
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
        view.translatesAutoresizingMaskIntoConstraints = true
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
        view.minimumValue = Float(xPositionStart)
        view.maximumValue = Float(xPositionFinish)
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
        view.minimumValue = Float(yPositionStart)
        view.maximumValue = Float(yPositionFinish)
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
        view.minimumValue = Float(widthStart)
        view.maximumValue = Float(widthFinish)
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
        view.minimumValue = Float(heightStart)
        view.maximumValue = Float(heightFinish)
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
        view.minimumValue = Float(xPositionStart)
        view.maximumValue = Float(xPositionFinish)
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
        view.minimumValue = Float(yPositionStart)
        view.maximumValue = Float(yPositionFinish)
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
        view.maximumValue = 360
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
    
    private lazy var controlsStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 10
        view.distribution = .fillEqually
        return view
    }()
    
    private func createControlRowStackView() -> UIStackView {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 10
        view.distribution = .fillProportionally
        return view
    }
    
    private lazy var xPositionStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(frameXSlider)
        view.addArrangedSubview(frameXLabel)
        return view
    }()

    private lazy var yPositionStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(frameYSlider)
        view.addArrangedSubview(frameYLabel)
        return view
    }()
    
    private lazy var frameWidthStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(frameWidthSlider)
        view.addArrangedSubview(frameWidthLabel)
        return view
    }()

    private lazy var frameHeightStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(frameHeightSlider)
        view.addArrangedSubview(frameHeightLabel)
        return view
    }()
    
    private lazy var xBoundsStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(boundsXSlider)
        view.addArrangedSubview(boundsXLabel)
        return view
    }()

    private lazy var yBoundsStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(boundsYSlider)
        view.addArrangedSubview(boundsYLabel)
        return view
    }()

    private lazy var boundsWidthStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(boundsWidthSlider)
        view.addArrangedSubview(boundsWidthLabel)
        return view
    }()

    private lazy var boundsHeightStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(boundsHeightSlider)
        view.addArrangedSubview(boundsHeightLabel)
        return view
    }()
    
    private lazy var centerXStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(centerXSlider)
        view.addArrangedSubview(centerXLabel)
        return view
    }()

    private lazy var centerYStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(centerYSlider)
        view.addArrangedSubview(centerYLabel)
        return view
    }()

    private lazy var rotationStackView: UIStackView = {
        let view = createControlRowStackView()
        view.addArrangedSubview(rotationSlider)
        view.addArrangedSubview(rotationLabel)
        return view
    }()

    private func setupControlArea() {
        controlArea.addSubview(controlsStackView)
        
        controlsStackView.addArrangedSubview(xPositionStackView)
        controlsStackView.addArrangedSubview(yPositionStackView)
        controlsStackView.addArrangedSubview(frameWidthStackView)
        controlsStackView.addArrangedSubview(frameHeightStackView)
        controlsStackView.addArrangedSubview(xBoundsStackView)
        controlsStackView.addArrangedSubview(yBoundsStackView)
        controlsStackView.addArrangedSubview(boundsWidthStackView)
        controlsStackView.addArrangedSubview(boundsHeightStackView)
        controlsStackView.addArrangedSubview(centerXStackView)
        controlsStackView.addArrangedSubview(centerYStackView)
        controlsStackView.addArrangedSubview(rotationStackView)
                        
        let constraints = [
            controlsStackView.topAnchor.constraint(equalTo: controlArea.topAnchor),
            controlsStackView.leadingAnchor.constraint(equalTo: controlArea.leadingAnchor),
            controlsStackView.trailingAnchor.constraint(equalTo: controlArea.trailingAnchor),
            controlsStackView.bottomAnchor.constraint(equalTo: controlArea.bottomAnchor),
            frameXSlider.widthAnchor.constraint(equalTo: controlArea.widthAnchor, multiplier: 0.5),
            frameYSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            frameWidthSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            frameHeightSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            boundsXSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            boundsYSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            boundsWidthSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            boundsHeightSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            centerXSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            centerYSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor),
            rotationSlider.widthAnchor.constraint(equalTo: frameXSlider.widthAnchor)
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

