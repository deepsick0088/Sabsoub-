.class final Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Flows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $requestManager:Lcom/bumptech/glide/RequestManager;

.field final synthetic $target:Lcom/bumptech/glide/integration/ktx/FlowTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/ktx/FlowTarget;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;->$requestManager:Lcom/bumptech/glide/RequestManager;

    iput-object p2, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;->$target:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;->$requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v1, p0, Lcom/bumptech/glide/integration/ktx/FlowsKt$flow$2$1;->$target:Lcom/bumptech/glide/integration/ktx/FlowTarget;

    .line 228
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method
