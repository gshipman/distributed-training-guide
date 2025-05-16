export TORCHELASTIC_ERROR_FILE=../error.json
export OMP_NUM_THREADS=64
export HF_HOME=../.cache

torchrun --standalone \
    --nnodes 1 \
    --nproc-per-node 2 \
    train_llm.py \
    --experiment-name fsdp \
    --dataset-name tatsu-lab/alpaca \
    --model-name openai-community/gpt2 \
    --cpu-offload off



#    --redirects 3 \
#    --log-dir ../logs \
