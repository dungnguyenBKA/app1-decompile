.class Lwm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwm;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/TreeMap;

.field final synthetic c:Lwm;


# direct methods
.method constructor <init>(Lwm;Ljava/util/TreeMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm$b;->c:Lwm;

    iput-object p2, p0, Lwm$b;->b:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BrowseMediaLibraryThread"

    const-string v1, "Send browse media library result to main thread"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lwm$b;->c:Lwm;

    invoke-static {v0}, Lwm;->a(Lwm;)Lwm$d;

    move-result-object v0

    iget-object v1, p0, Lwm$b;->b:Ljava/util/TreeMap;

    invoke-interface {v0, v1}, Lwm$d;->b(Ljava/util/TreeMap;)V

    return-void
.end method
