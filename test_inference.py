#!/usr/bin/env python3

from fairseq.models.transformer import TransformerModel

if __name__ == "__main__":
    model = TransformerModel.from_pretrained("model", "checkpoint_best.pt", "model", bpe="sentencepiece", sentencepiece_model="model/sentencepiece.bpe.model")
    print(model.translate("abcd"))
