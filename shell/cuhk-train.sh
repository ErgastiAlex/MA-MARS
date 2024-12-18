#export CUDA_VISIBLE_DEVICES=0,1,2,3
export CUDA_VISIBLE_DEVICES=1

python -m torch.distributed.run --nproc_per_node=1 --rdzv_endpoint=127.0.0.1:29501 \
Retrieval.py \
--config configs/PS_cuhk_pedes.yaml \
--output_dir output/cuhk-pedes-mamba/train \
--checkpoint ../RaSA-couscous/ckpt/ALBEF.pth \
--eval_mAP
