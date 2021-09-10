.class final Lcom/android/billingclient/api/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/d$b;

.field private final synthetic c:Lcom/android/billingclient/api/p0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/p0;Lcom/android/billingclient/api/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/o0;->c:Lcom/android/billingclient/api/p0;

    iput-object p2, p0, Lcom/android/billingclient/api/o0;->b:Lcom/android/billingclient/api/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/o0;->c:Lcom/android/billingclient/api/p0;

    iget-object v0, v0, Lcom/android/billingclient/api/p0;->c:Lcom/android/billingclient/api/l;

    iget-object v1, p0, Lcom/android/billingclient/api/o0;->b:Lcom/android/billingclient/api/d$b;

    .line 2
    invoke-virtual {v1}, Lcom/android/billingclient/api/d$b;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/o0;->b:Lcom/android/billingclient/api/d$b;

    invoke-virtual {v2}, Lcom/android/billingclient/api/d$b;->b()Ljava/util/List;

    move-result-object v2

    .line 3
    check-cast v0, Lcom/android/billingclient/api/zzah;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/zzah;->g(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
