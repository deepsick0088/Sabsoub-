.class Ljavax/jmdns/impl/DNSQuestion$DNS4Address;
.super Ljavax/jmdns/impl/DNSQuestion;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DNS4Address"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSQuestion;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    return-void
.end method


# virtual methods
.method public addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Ljavax/jmdns/impl/constants/DNSConstants;->DNS_TTL:I

    invoke-virtual {p1, v0, v1, v2}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
