.class Ljavax/jmdns/impl/JmDNSImpl$4;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;

.field final synthetic val$listener:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

.field final synthetic val$localEvent:Ljavax/jmdns/ServiceEvent;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V
    .locals 0

    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->val$listener:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    iput-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->val$localEvent:Ljavax/jmdns/ServiceEvent;

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->val$listener:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->val$localEvent:Ljavax/jmdns/ServiceEvent;

    .line 1307
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    return-void
.end method
