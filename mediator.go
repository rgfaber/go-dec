package go_dec

type Mediator chan ITopic

func NewMediator(size int) Mediator {
	return make(Mediator, size)
}
