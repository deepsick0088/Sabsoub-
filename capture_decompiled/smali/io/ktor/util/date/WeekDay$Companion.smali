.class public final Lio/ktor/util/date/WeekDay$Companion;
.super Ljava/lang/Object;
.source "Date.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/date/WeekDay;
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
    invoke-direct {p0}, Lio/ktor/util/date/WeekDay$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(I)Lio/ktor/util/date/WeekDay;
    .locals 1

    .line 32
    invoke-static {}, Lio/ktor/util/date/WeekDay;->values()[Lio/ktor/util/date/WeekDay;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
