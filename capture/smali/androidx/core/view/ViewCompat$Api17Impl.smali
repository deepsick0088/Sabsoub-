.class abstract Landroidx/core/view/ViewCompat$Api17Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method static generateViewId()I
    .locals 1

    .line 5720
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 5715
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method static getLabelFor(Landroid/view/View;)I
    .locals 0

    .line 5725
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result p0

    return p0
.end method

.method static getLayoutDirection(Landroid/view/View;)I
    .locals 0

    .line 5740
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method static getPaddingEnd(Landroid/view/View;)I
    .locals 0

    .line 5755
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method static getPaddingStart(Landroid/view/View;)I
    .locals 0

    .line 5750
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method static isPaddingRelative(Landroid/view/View;)Z
    .locals 0

    .line 5765
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p0

    return p0
.end method

.method static setLabelFor(Landroid/view/View;I)V
    .locals 0

    .line 5730
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    return-void
.end method

.method static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .line 5735
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .line 5745
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .line 5760
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
