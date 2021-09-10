.class Lcom/zjsoft/funnyad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjsoft/funnyad/a$f;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zjsoft/funnyad/a;


# direct methods
.method constructor <init>(Lcom/zjsoft/funnyad/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/funnyad/c;->b:Lcom/zjsoft/funnyad/a;

    iput-object p2, p0, Lcom/zjsoft/funnyad/c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/ADRequestList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/c;->b:Lcom/zjsoft/funnyad/a;

    new-instance v1, Lob0;

    iget-object v2, p0, Lcom/zjsoft/funnyad/c;->a:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v1, v2, p1, v3}, Lob0;-><init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;Z)V

    iput-object v1, v0, Lcom/zjsoft/funnyad/a;->g:Lob0;

    return-void
.end method
