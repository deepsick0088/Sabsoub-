.class final Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/repos/RepoDetailsState;",
        "s",
        "",
        "Lorg/fdroid/database/Repository;",
        "reposState",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$repoLiveData$1"
    f = "RepoDetailsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->invoke(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/repos/RepoDetailsState;",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;

    invoke-direct {v0, p3}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->label:I

    if-nez v0, :cond_4

    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$repoLiveData$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->getRepo()Lorg/fdroid/database/Repository;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/fdroid/database/Repository;

    invoke-virtual {v3}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->getRepo()Lorg/fdroid/database/Repository;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Lorg/fdroid/database/Repository;

    :goto_1
    return-object v1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
