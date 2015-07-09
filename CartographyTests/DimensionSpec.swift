import Cartography

import Nimble
import Quick

class DimensionSpec: QuickSpec {
    override func spec() {
        var superview: TestView!
        var view: TestView!

        beforeEach {
            superview = TestView(frame: CGRectMake(0, 0, 400, 400))

            view = TestView(frame: CGRectZero)
            superview.addSubview(view)
        }

        describe("LayoutProxy.width") {
            it("should support relative equalities") {
                constrain(view) { view in
                    view.width == view.superview!.width
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(400))
            }

            it("should support relative inequalities") {
                constrain(view) { view in
                    view.width <= view.superview!.width
                    view.width >= view.superview!.width
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(400))
            }

            it("should support addition") {
                constrain(view) { view in
                    view.width == view.superview!.width + 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(500))
            }

            it("should support subtraction") {
                constrain(view) { view in
                    view.width == view.superview!.width - 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(300))
            }

            it("should support multiplication") {
                constrain(view) { view in
                    view.width == view.superview!.width * 2
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(800))
            }

            it("should support division") {
                constrain(view) { view in
                    view.width == view.superview!.width / 2
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(200))
            }

            it("should support complex expressions") {
                constrain(view) { view in
                    view.width == view.superview!.width / 2 + 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(300))
            }

            it("should support numerical equalities") {
                constrain(view) { view in
                    view.width == 200
                }

                superview.layoutIfNeeded()

                expect(view.frame.width).to(equal(200))
            }
        }

        describe("LayoutProxy.height") {
            it("should support relative equalities") {
                constrain(view) { view in
                    view.height == view.superview!.height
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(400))
            }

            it("should support relative inequalities") {
                constrain(view) { view in
                    view.height <= view.superview!.height
                    view.height >= view.superview!.height
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(400))
            }

            it("should support addition") {
                constrain(view) { view in
                    view.height == view.superview!.height + 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(500))
            }

            it("should support subtraction") {
                constrain(view) { view in
                    view.height == view.superview!.height - 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(300))
            }

            it("should support multiplication") {
                constrain(view) { view in
                    view.height == view.superview!.height * 2
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(800))
            }

            it("should support division") {
                constrain(view) { view in
                    view.height == view.superview!.height / 2
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(200))
            }

            it("should support complex expressions") {
                constrain(view) { view in
                    view.height == view.superview!.height / 2 + 100
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(300))
            }

            it("should support numerical equalities") {
                constrain(view) { view in
                    view.height == 200
                }

                superview.layoutIfNeeded()

                expect(view.frame.height).to(equal(200))
            }
        }
    }
}
