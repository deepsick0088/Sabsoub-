.class final Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoV2Fetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoV2Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;

    invoke-direct {v0}, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;-><init>()V

    sput-object v0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "Downloaded entry, now streaming index..."

    return-object v0
.end method
