.class final Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;->INSTANCE:Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt$lambda-4$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 224
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.ComposableSingletons$IpfsGatewaySettingsActivityKt.lambda-4.<anonymous> (IpfsGatewaySettingsActivity.kt:223)"

    const v2, 0x1d407aa4

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 225
    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/DeleteForeverKt;->getDeleteForever(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    const-string v1, "Localized description"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v6, 0x30

    const/16 v7, 0xc

    move-object v5, p1

    .line 224
    invoke-static/range {v0 .. v7}, Landroidx/compose/material/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
