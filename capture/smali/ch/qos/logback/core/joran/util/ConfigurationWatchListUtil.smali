.class public Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;
.super Ljava/lang/Object;


# static fields
.field static final origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;-><init>()V

    sput-object v0, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addInfo(Lch/qos/logback/core/Context;Ljava/lang/String;)V
    .locals 2

    .line 0
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    sget-object v1, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V

    return-void
.end method

.method static addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V
    .locals 1

    .line 0
    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null context in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    return-void
.end method

.method public static addToWatchList(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 3

    .line 0
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null ConfigurationWatchList. Cannot add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addWarn(Lch/qos/logback/core/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] to configuration watch list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addInfo(Lch/qos/logback/core/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->addToWatchList(Ljava/net/URL;)V

    :goto_0
    return-void
.end method

.method static addWarn(Lch/qos/logback/core/Context;Ljava/lang/String;)V
    .locals 2

    .line 0
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    sget-object v1, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->origin:Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addStatus(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/Status;)V

    return-void
.end method

.method public static getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    .locals 1

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v0}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    return-object p0
.end method

.method public static getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;
    .locals 0

    .line 0
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getMainURL()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static registerConfigurationWatchList(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/ConfigurationWatchList;)V
    .locals 1

    .line 0
    const-string v0, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v0, p1}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMainWatchURL(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 2

    .line 0
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;-><init>()V

    invoke-virtual {v0, p0}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    const-string v1, "CONFIGURATION_WATCH_LIST"

    invoke-interface {p0, v1, v0}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->clear()V

    :goto_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->setMainURL(Ljava/net/URL;)V

    return-void
.end method
