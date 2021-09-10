.class Lcom/google/billingclient/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/billingclient/g;->m(Ljava/lang/String;Lcom/android/billingclient/api/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/billingclient/api/i;

.field final synthetic d:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Ljava/lang/String;Lcom/android/billingclient/api/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/g$a;->d:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/g$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/billingclient/g$a;->c:Lcom/android/billingclient/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/h;->b()Lcom/android/billingclient/api/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/billingclient/g$a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/billingclient/g$a;->d:Lcom/google/billingclient/g;

    invoke-static {v1}, Lcom/google/billingclient/g;->g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/billingclient/g$a;->c:Lcom/android/billingclient/api/i;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/c;->b(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V

    return-void
.end method
