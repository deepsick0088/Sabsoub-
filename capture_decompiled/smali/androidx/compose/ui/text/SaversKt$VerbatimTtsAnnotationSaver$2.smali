.class final Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/VerbatimTtsAnnotation;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 192
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    move-result-object p1

    return-object p1
.end method
