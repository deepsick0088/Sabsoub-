.class public Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field final mAnimators:Ljava/util/ArrayList;

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 120
    new-instance v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 94
    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

.method onAnimationsEnded()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

.method public play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public playSequentially(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    iget-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-wide v2, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 71
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;

    .line 77
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 79
    :cond_3
    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method
