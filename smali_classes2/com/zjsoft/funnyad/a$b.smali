.class Lcom/zjsoft/funnyad/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/funnyad/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zjsoft/funnyad/a;


# direct methods
.method constructor <init>(Lcom/zjsoft/funnyad/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/funnyad/a$b;->b:Lcom/zjsoft/funnyad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/zjsoft/funnyad/a$b;->b:Lcom/zjsoft/funnyad/a;

    invoke-static {p1}, Lcom/zjsoft/funnyad/a;->a(Lcom/zjsoft/funnyad/a;)Lcom/zjsoft/funnyad/a$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/zjsoft/funnyad/a$b;->b:Lcom/zjsoft/funnyad/a;

    invoke-static {p1}, Lcom/zjsoft/funnyad/a;->a(Lcom/zjsoft/funnyad/a;)Lcom/zjsoft/funnyad/a$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/zjsoft/funnyad/a$e;->a()V

    :cond_0
    return-void
.end method
