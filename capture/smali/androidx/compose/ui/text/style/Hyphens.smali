.class public final Landroidx/compose/ui/text/style/Hyphens;
.super Ljava/lang/Object;
.source "Hyphens.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/Hyphens$Companion;
    }
.end annotation


# static fields
.field private static final Auto:I

.field public static final Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

.field private static final None:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/Hyphens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/Hyphens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/Hyphens;->None:I

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    return-void
.end method

.method public static final synthetic access$getAuto$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->None:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/style/Hyphens;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/style/Hyphens;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/text/style/Hyphens;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/Hyphens;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/Hyphens;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/Hyphens;->None:I

    .line 81
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Hyphens.None"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    .line 82
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Hyphens.Auto"

    goto :goto_0

    :cond_1
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 80
    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    return v0
.end method
