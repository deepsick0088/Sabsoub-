.class public final Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSTaskStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSTaskStarterImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;
    }
.end annotation


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

.field private final _stateTimer:Ljava/util/Timer;

.field private final _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 4

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 277
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ").Timer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    .line 278
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ").State.Timer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public cancelStateTimer()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    .line 314
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public cancelTimer()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    .line 305
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public purgeStateTimer()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    .line 296
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public purgeTimer()V
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    .line 287
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public startAnnouncer()V
    .locals 2

    .line 332
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Announcer;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Announcer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Announcer;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startCanceler()V
    .locals 2

    .line 350
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Canceler;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Canceler;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Canceler;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startProber()V
    .locals 2

    .line 323
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Prober;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startReaper()V
    .locals 2

    .line 359
    new-instance v0, Ljavax/jmdns/impl/tasks/RecordReaper;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/RecordReaper;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/RecordReaper;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startRenewer()V
    .locals 2

    .line 341
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Renewer;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startResponder(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 2

    .line 395
    new-instance v0, Ljavax/jmdns/impl/tasks/Responder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Ljavax/jmdns/impl/tasks/Responder;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    iget-object p1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/tasks/Responder;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 2

    .line 368
    new-instance v0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iget-object p1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->start(Ljava/util/Timer;)V

    return-void
.end method

.method public startServiceResolver(Ljava/lang/String;)V
    .locals 2

    .line 386
    new-instance v0, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    iget-object p1, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->start(Ljava/util/Timer;)V

    return-void
.end method
