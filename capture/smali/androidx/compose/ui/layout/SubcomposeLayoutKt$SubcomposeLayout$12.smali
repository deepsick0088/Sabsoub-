.class final Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;
.super Lkotlin/jvm/internal/Lambda;
.source "SubcomposeLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

.field final synthetic $measurePolicy:Lkotlin/jvm/functions/Function2;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $state:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$state:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    iput p5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$$changed:I

    iput p6, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$state:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$intermediateMeasurePolicy:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    iget v6, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$12;->$$default:I

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
