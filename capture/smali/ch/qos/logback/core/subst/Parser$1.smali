.class abstract synthetic Lch/qos/logback/core/subst/Parser$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/subst/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ch$qos$logback$core$subst$Token$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    invoke-static {}, Lch/qos/logback/core/subst/Token$Type;->values()[Lch/qos/logback/core/subst/Token$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lch/qos/logback/core/subst/Parser$1;->$SwitchMap$ch$qos$logback$core$subst$Token$Type:[I

    :try_start_0
    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->LITERAL:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lch/qos/logback/core/subst/Parser$1;->$SwitchMap$ch$qos$logback$core$subst$Token$Type:[I

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lch/qos/logback/core/subst/Parser$1;->$SwitchMap$ch$qos$logback$core$subst$Token$Type:[I

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->START:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
