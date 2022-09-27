import torch.cuda


def test_cuda_is_available():
    assert torch.cuda.is_available()