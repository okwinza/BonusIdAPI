from abc import ABC, abstractmethod

class Algorithm(ABC):
    @abstractmethod
    def process_item(self, link: str) -> int:
        pass
