.class public abstract Landroidx/work/impl/constraints/trackers/StorageNotLowTrackerKt;
.super Ljava/lang/Object;
.source "StorageNotLowTracker.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "StorageNotLowTracker"

    .line 75
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"StorageNotLowTracker\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/constraints/trackers/StorageNotLowTrackerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/impl/constraints/trackers/StorageNotLowTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
