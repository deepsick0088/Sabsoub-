.class public final Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;
.super Ljava/lang/Object;
.source "AddRepoIntroScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field public static lambda-2:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field public static lambda-3:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;

    invoke-direct {v0}, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;

    .line 98
    sget-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-1$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-1$1;

    const v1, 0x79edbbd7

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    const v0, -0x7a717649

    .line 236
    sget-object v1, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-2$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-2$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    const v0, -0x550f2607

    .line 244
    sget-object v1, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-3:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$app_fullRelease()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getLambda-2$app_fullRelease()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-2:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getLambda-3$app_fullRelease()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/views/repos/ComposableSingletons$AddRepoIntroScreenKt;->lambda-3:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
