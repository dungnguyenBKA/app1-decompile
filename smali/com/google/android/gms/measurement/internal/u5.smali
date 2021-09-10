.class final Lcom/google/android/gms/measurement/internal/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u5;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "app_id"

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/u5;->b:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    const-string v4, "null reference"

    .line 3
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "name"

    .line 4
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "origin"

    .line 5
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v7}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "value"

    .line 8
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 9
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v8, "triggered_timestamp"

    .line 15
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 16
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v8

    .line 18
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "triggered_event_name"

    .line 19
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "triggered_event_params"

    .line 20
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    .line 21
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/gms/measurement/internal/h9;->I(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v19

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v8

    .line 23
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "timed_out_event_name"

    .line 24
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "timed_out_event_params"

    .line 25
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    .line 26
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/gms/measurement/internal/h9;->I(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v8

    .line 28
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "expired_event_name"

    .line 29
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "expired_event_params"

    .line 30
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    .line 31
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/gms/measurement/internal/h9;->I(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 33
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "creation_timestamp"

    .line 34
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const-string v1, "trigger_event_name"

    .line 35
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "trigger_timeout"

    .line 36
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v1, "time_to_live"

    .line 37
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object v8, v7

    move-object v10, v5

    move-object v11, v4

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkg;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/z7;->L(Lcom/google/android/gms/measurement/internal/zzaa;)V

    :catch_0
    return-void
.end method
