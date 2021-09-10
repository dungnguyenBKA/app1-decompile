.class Lcom/google/billingclient/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/android/billingclient/api/a;

.field final synthetic c:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/f;->c:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/f;->b:Lcom/android/billingclient/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/f;->c:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/billingclient/f;->b:Lcom/android/billingclient/api/a;

    new-instance v2, Lcom/google/billingclient/f$a;

    invoke-direct {v2, p0}, Lcom/google/billingclient/f$a;-><init>(Lcom/google/billingclient/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    return-void
.end method
