.class public final Lio/ktor/client/statement/HttpResponseContainer;
.super Ljava/lang/Object;
.source "HttpResponsePipeline.kt"


# instance fields
.field private final expectedType:Lio/ktor/util/reflect/TypeInfo;

.field private final response:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "expectedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    iput-object p2, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final component1()Lio/ktor/util/reflect/TypeInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/client/statement/HttpResponseContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/client/statement/HttpResponseContainer;

    iget-object v1, p0, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    iget-object v3, p1, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    iget-object p1, p1, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getResponse()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    invoke-virtual {v0}, Lio/ktor/util/reflect/TypeInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseContainer(expectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/statement/HttpResponseContainer;->expectedType:Lio/ktor/util/reflect/TypeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/statement/HttpResponseContainer;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
