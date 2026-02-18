FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends lua5.1 git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    requests cbor2 \
    fastapi "uvicorn[standard]" httpx pytest

WORKDIR /app

# Clone LibBonusId as sibling (expected by test_runner.lua and generate)
RUN git clone --depth 1 https://github.com/TradeSkillMaster/LibBonusId /LibBonusId

COPY . .
RUN chmod +x .docker/entrypoint.sh

ENTRYPOINT [".docker/entrypoint.sh"]
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
