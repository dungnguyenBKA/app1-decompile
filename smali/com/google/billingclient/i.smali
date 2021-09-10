.class Lcom/google/billingclient/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/i;->b:Lcom/google/billingclient/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BillingManager"

    const-string v1, "Setup successful. Querying inventory."

    .line 1
    invoke-static {v0, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/i;->b:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->c(Lcom/google/billingclient/g;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/billingclient/g;->b(Lcom/google/billingclient/g;Z)Z

    return-void
.end method
