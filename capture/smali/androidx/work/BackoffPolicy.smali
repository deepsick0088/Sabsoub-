.class public final enum Landroidx/work/BackoffPolicy;
.super Ljava/lang/Enum;
.source "BackoffPolicy.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/BackoffPolicy;

.field public static final enum EXPONENTIAL:Landroidx/work/BackoffPolicy;

.field public static final enum LINEAR:Landroidx/work/BackoffPolicy;


# direct methods
.method private static final synthetic $values()[Landroidx/work/BackoffPolicy;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/work/BackoffPolicy;

    const/4 v1, 0x0

    sget-object v2, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroidx/work/BackoffPolicy;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/BackoffPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 32
    new-instance v0, Landroidx/work/BackoffPolicy;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/work/BackoffPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    invoke-static {}, Landroidx/work/BackoffPolicy;->$values()[Landroidx/work/BackoffPolicy;

    move-result-object v0

    sput-object v0, Landroidx/work/BackoffPolicy;->$VALUES:[Landroidx/work/BackoffPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/BackoffPolicy;
    .locals 1

    .line 0
    const-class v0, Landroidx/work/BackoffPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/BackoffPolicy;

    return-object p0
.end method

.method public static values()[Landroidx/work/BackoffPolicy;
    .locals 1

    .line 0
    sget-object v0, Landroidx/work/BackoffPolicy;->$VALUES:[Landroidx/work/BackoffPolicy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/BackoffPolicy;

    return-object v0
.end method
