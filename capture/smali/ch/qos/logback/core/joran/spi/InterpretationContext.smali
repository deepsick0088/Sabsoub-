.class public Lch/qos/logback/core/joran/spi/InterpretationContext;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/spi/PropertyContainer;


# static fields
.field static androidContextInitDone:Z = false


# instance fields
.field defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

.field joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

.field final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/InPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    new-instance v0, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    iput-object p2, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    return-void
.end method

.method private initAndroidContextIfValueHasSpecialVars(Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-boolean v0, Lch/qos/logback/core/joran/spi/InterpretationContext;->androidContextInitDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lch/qos/logback/core/android/AndroidContextUtil;->containsProperties(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lch/qos/logback/core/android/AndroidContextUtil;

    invoke-direct {p1}, Lch/qos/logback/core/android/AndroidContextUtil;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p1, v0}, Lch/qos/logback/core/android/AndroidContextUtil;->setupProperties(Lch/qos/logback/core/Context;)V

    const/4 p1, 0x1

    sput-boolean p1, Lch/qos/logback/core/joran/spi/InterpretationContext;->androidContextInitDone:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InPlayListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has been already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addSubstitutionProperties(Ljava/util/Properties;)V
    .locals 3

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addSubstitutionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addSubstitutionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method fireInPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/InPlayListener;

    invoke-interface {v1, p1}, Lch/qos/logback/core/joran/event/InPlayListener;->inPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCopyOfPropertyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    return-object v0
.end method

.method public getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    return-object v0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectMap:Ljava/util/Map;

    return-object v0
.end method

.method public getObjectStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, p1}, Lch/qos/logback/core/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListenerListEmpty()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekObject()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popObject()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pushObject(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method setPropertiesMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    return-void
.end method

.method public subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->initAndroidContextIfValueHasSpecialVars(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-static {p1, p0, v0}, Lch/qos/logback/core/util/OptionHelper;->substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method updateLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
