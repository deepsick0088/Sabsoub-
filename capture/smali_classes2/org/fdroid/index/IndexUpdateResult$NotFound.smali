.class public final Lorg/fdroid/index/IndexUpdateResult$NotFound;
.super Lorg/fdroid/index/IndexUpdateResult;
.source "IndexUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotFound"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lorg/fdroid/index/IndexUpdateResult$NotFound;",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "()V",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/IndexUpdateResult$NotFound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/IndexUpdateResult$NotFound;

    invoke-direct {v0}, Lorg/fdroid/index/IndexUpdateResult$NotFound;-><init>()V

    sput-object v0, Lorg/fdroid/index/IndexUpdateResult$NotFound;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$NotFound;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lorg/fdroid/index/IndexUpdateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
