.class Lwm$a;
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
.field final synthetic b:Lwm;


# direct methods
.method constructor <init>(Lwm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm$a;->b:Lwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwm$a;->b:Lwm;

    invoke-static {v0}, Lwm;->a(Lwm;)Lwm$d;

    move-result-object v0

    invoke-interface {v0}, Lwm$d;->d()V

    return-void
.end method
