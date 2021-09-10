.class Lcom/google/billingclient/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/billingclient/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/billingclient/m;


# direct methods
.method constructor <init>(Lcom/google/billingclient/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/m$a;->a:Lcom/google/billingclient/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/m$a;->a:Lcom/google/billingclient/m;

    iget-object v0, v0, Lcom/google/billingclient/m;->e:Lcom/google/billingclient/g;

    invoke-static {v0, p2}, Lcom/google/billingclient/g;->h(Lcom/google/billingclient/g;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/m$a;->a:Lcom/google/billingclient/m;

    iget-object v0, v0, Lcom/google/billingclient/m;->d:Lcom/android/billingclient/api/p;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    .line 3
    iget-object p2, p0, Lcom/google/billingclient/m$a;->a:Lcom/google/billingclient/m;

    iget-object p2, p2, Lcom/google/billingclient/m;->e:Lcom/google/billingclient/g;

    invoke-static {p2}, Lcom/google/billingclient/g;->d(Lcom/google/billingclient/g;)Landroid/content/Context;

    invoke-static {p1}, Lcom/google/billingclient/BillingHelper;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method
