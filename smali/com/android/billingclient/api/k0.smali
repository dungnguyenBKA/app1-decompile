.class final Lcom/android/billingclient/api/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/p;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/k0;->b:Lcom/android/billingclient/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/k0;->b:Lcom/android/billingclient/api/p;

    sget-object v1, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
