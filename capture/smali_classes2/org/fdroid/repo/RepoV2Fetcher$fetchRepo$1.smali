.class final Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RepoV2Fetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoV2Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/fdroid/repo/RepoV2Fetcher;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/RepoV2Fetcher;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->this$0:Lorg/fdroid/repo/RepoV2Fetcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    iget-object v0, p0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->this$0:Lorg/fdroid/repo/RepoV2Fetcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/fdroid/repo/RepoV2Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
