.class final Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;
.super Lkotlinx/serialization/json/internal/JsonTreeDecoder;
.source "TreeJsonDecoder.kt"


# instance fields
.field private final keys:Ljava/util/List;

.field private position:I

.field private final size:I

.field private final value:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V
    .locals 8

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 270
    invoke-direct/range {v1 .. v7}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    .line 271
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->keys:Ljava/util/List;

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->size:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->position:I

    return-void
.end method


# virtual methods
.method protected currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->position:I

    .line 289
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    :goto_0
    return-object p1
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    .line 0
    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->position:I

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->position:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    div-int/lit8 p2, p2, 0x2

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->keys:Ljava/util/List;

    .line 277
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    .line 0
    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;->value:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method
