.class public final synthetic Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;


# instance fields
.field public final synthetic f$0:Landroid/graphics/ColorSpace;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda48;->f$0:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final invoke(D)D
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper$$ExternalSyntheticLambda48;->f$0:Landroid/graphics/ColorSpace;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->$r8$lambda$pQY73vf2dPh7NEalGYV8cBq8u3g(Landroid/graphics/ColorSpace;D)D

    move-result-wide p1

    return-wide p1
.end method
