.class public final synthetic Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/fdroid/nearby/SwapService;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/nearby/SwapService;

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/fdroid/nearby/SwapService;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/database/Repository;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->$r8$lambda$xN9VygL79lSHtX8IXWP_bja-76o(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/database/Repository;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
