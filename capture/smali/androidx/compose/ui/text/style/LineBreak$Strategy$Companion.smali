.class public final Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;
.super Ljava/lang/Object;
.source "LineBreak.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineBreak$Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBalanced-fcGXIks()I
    .locals 1

    .line 208
    invoke-static {}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->access$getBalanced$cp()I

    move-result v0

    return v0
.end method

.method public final getHighQuality-fcGXIks()I
    .locals 1

    .line 195
    invoke-static {}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->access$getHighQuality$cp()I

    move-result v0

    return v0
.end method

.method public final getSimple-fcGXIks()I
    .locals 1

    .line 180
    invoke-static {}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->access$getSimple$cp()I

    move-result v0

    return v0
.end method
