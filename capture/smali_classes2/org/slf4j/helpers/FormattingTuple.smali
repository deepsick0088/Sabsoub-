.class public Lorg/slf4j/helpers/FormattingTuple;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field public static NULL:Lorg/slf4j/helpers/FormattingTuple;


# instance fields
.field private final argArray:[Ljava/lang/Object;

.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/slf4j/helpers/FormattingTuple;->NULL:Lorg/slf4j/helpers/FormattingTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    iput-object p3, p0, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    iput-object p2, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    return-object v0
.end method
