export TORCHELASTIC_ERROR_FILE=../error.json
export OMP_NUM_THREADS=64
torchrun --standalone     --nproc-per-node 2     --redirects 3\
  --log-dir ../logs     train_llm.py     \
  --experiment-name gpt2-alpaca-ddp-$(date +%Y-%m-%dT%H-%M-%S) \
  --dataset-name tatsu-lab/alpaca     --model-name openai-community/gpt2
