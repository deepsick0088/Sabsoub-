.class final Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->updateRepository(Lorg/fdroid/database/RepositoryDaoInt;JJLkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repoId:J

.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    iput-wide p2, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;->$repoId:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 310
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;->this$0:Lorg/fdroid/database/RepositoryDaoInt;

    iget-wide v1, p0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;->$repoId:J

    .line 317
    invoke-interface {v0, v1, v2, p1}, Lorg/fdroid/database/RepositoryDaoInt;->deleteAntiFeature(JLjava/lang/String;)V

    return-void
.end method
