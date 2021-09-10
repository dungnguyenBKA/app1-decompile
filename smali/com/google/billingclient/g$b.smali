.class Lcom/google/billingclient/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/billingclient/g;->w(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/android/billingclient/api/p;

.field final synthetic e:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/g$b;->e:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/g$b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/billingclient/g$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/billingclient/g$b;->d:Lcom/android/billingclient/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g$b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/o;->c()Lcom/android/billingclient/api/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/billingclient/g$b;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/o$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/o$a;

    iget-object v1, p0, Lcom/google/billingclient/g$b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/o$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/o$a;

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/o$a;->a()Lcom/android/billingclient/api/o;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/billingclient/g$b;->e:Lcom/google/billingclient/g;

    invoke-static {v1}, Lcom/google/billingclient/g;->g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;

    move-result-object v1

    new-instance v2, Lcom/google/billingclient/g$b$a;

    invoke-direct {v2, p0}, Lcom/google/billingclient/g$b$a;-><init>(Lcom/google/billingclient/g$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/c;->i(Lcom/android/billingclient/api/o;Lcom/android/billingclient/api/p;)V

    :cond_1
    :goto_0
    return-void
.end method
