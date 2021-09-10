.class Lwm$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwm;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lwm;


# direct methods
.method constructor <init>(Lwm;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm$c;->c:Lwm;

    iput p2, p0, Lwm$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm$c;->c:Lwm;

    invoke-static {v0}, Lwm;->a(Lwm;)Lwm$d;

    move-result-object v0

    iget v1, p0, Lwm$c;->b:I

    invoke-interface {v0, v1}, Lwm$d;->c(I)V

    return-void
.end method
