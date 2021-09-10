.class public final synthetic Lcom/google/billingclient/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/billingclient/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/billingclient/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/billingclient/a;->b:Lcom/google/billingclient/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/billingclient/a;->b:Lcom/google/billingclient/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/google/billingclient/d;

    invoke-direct {v1, v0}, Lcom/google/billingclient/d;-><init>(Lcom/google/billingclient/g;)V

    .line 3
    new-instance v2, Lve0;

    invoke-direct {v2, v1}, Lve0;-><init>(Lvd0;)V

    .line 4
    invoke-static {}, Lnf0;->c()Lxd0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v1

    .line 5
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v1

    new-instance v2, Lcom/google/billingclient/c;

    invoke-direct {v2, v0}, Lcom/google/billingclient/c;-><init>(Lcom/google/billingclient/g;)V

    sget-object v0, Lcom/google/billingclient/e;->a:Lcom/google/billingclient/e;

    .line 6
    sget-object v3, Loe0;->b:Lie0;

    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    return-void
.end method
