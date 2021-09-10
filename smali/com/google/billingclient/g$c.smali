.class Lcom/google/billingclient/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/billingclient/g;->u(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/g$c;->c:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/g$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/g$c;->c:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->i(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/g$c;->c:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/billingclient/g$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/billingclient/g$c;->c:Lcom/google/billingclient/g;

    invoke-static {v2}, Lcom/google/billingclient/g;->i(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->g(Ljava/lang/String;Lcom/android/billingclient/api/l;)V

    :cond_0
    return-void
.end method
