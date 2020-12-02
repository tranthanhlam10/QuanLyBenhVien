﻿namespace QuanLyPhongKham.GUI
{
    partial class frmLogin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLogin));
            this.txb_account = new Guna.UI.WinForms.GunaTextBox();
            this.lb_QLPK = new Guna.UI.WinForms.GunaLabel();
            this.lb_login = new Guna.UI.WinForms.GunaLabel();
            this.lb_pass = new Guna.UI.WinForms.GunaLabel();
            this.txb_pass = new Guna.UI.WinForms.GunaTextBox();
            this.btt_login = new Guna.UI.WinForms.GunaAdvenceButton();
            this.picbox_logo = new Guna.UI.WinForms.GunaCirclePictureBox();
            this.btt_exit = new Guna.UI.WinForms.GunaControlBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.label_connectionStatus = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.picbox_logo)).BeginInit();
            this.SuspendLayout();
            // 
            // txb_account
            // 
            this.txb_account.BaseColor = System.Drawing.Color.White;
            this.txb_account.BorderColor = System.Drawing.Color.Black;
            this.txb_account.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txb_account.Enabled = false;
            this.txb_account.FocusedBaseColor = System.Drawing.Color.White;
            this.txb_account.FocusedBorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.txb_account.FocusedForeColor = System.Drawing.SystemColors.ControlText;
            this.txb_account.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txb_account.ForeColor = System.Drawing.Color.Black;
            this.txb_account.Location = new System.Drawing.Point(139, 428);
            this.txb_account.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txb_account.Name = "txb_account";
            this.txb_account.PasswordChar = '\0';
            this.txb_account.SelectedText = "";
            this.txb_account.Size = new System.Drawing.Size(332, 37);
            this.txb_account.TabIndex = 0;
            // 
            // lb_QLPK
            // 
            this.lb_QLPK.Font = new System.Drawing.Font("Segoe UI", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_QLPK.ForeColor = System.Drawing.Color.Red;
            this.lb_QLPK.Location = new System.Drawing.Point(104, 242);
            this.lb_QLPK.Name = "lb_QLPK";
            this.lb_QLPK.Size = new System.Drawing.Size(408, 158);
            this.lb_QLPK.TabIndex = 0;
            this.lb_QLPK.Text = "PHẦN MỀM QUẢN LÍ BỆNH VIỆN";
            this.lb_QLPK.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lb_login
            // 
            this.lb_login.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_login.ForeColor = System.Drawing.Color.Red;
            this.lb_login.Location = new System.Drawing.Point(108, 390);
            this.lb_login.Name = "lb_login";
            this.lb_login.Size = new System.Drawing.Size(111, 34);
            this.lb_login.TabIndex = 1;
            this.lb_login.Text = "Tài khoản:";
            this.lb_login.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // lb_pass
            // 
            this.lb_pass.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_pass.ForeColor = System.Drawing.Color.Red;
            this.lb_pass.Location = new System.Drawing.Point(108, 478);
            this.lb_pass.Name = "lb_pass";
            this.lb_pass.Size = new System.Drawing.Size(111, 34);
            this.lb_pass.TabIndex = 2;
            this.lb_pass.Text = "Mật khẩu:";
            this.lb_pass.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txb_pass
            // 
            this.txb_pass.BaseColor = System.Drawing.Color.White;
            this.txb_pass.BorderColor = System.Drawing.Color.Black;
            this.txb_pass.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txb_pass.Enabled = false;
            this.txb_pass.FocusedBaseColor = System.Drawing.Color.White;
            this.txb_pass.FocusedBorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.txb_pass.FocusedForeColor = System.Drawing.SystemColors.ControlText;
            this.txb_pass.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txb_pass.Location = new System.Drawing.Point(139, 514);
            this.txb_pass.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txb_pass.Name = "txb_pass";
            this.txb_pass.PasswordChar = '●';
            this.txb_pass.SelectedText = "";
            this.txb_pass.Size = new System.Drawing.Size(332, 37);
            this.txb_pass.TabIndex = 1;
            this.txb_pass.UseSystemPasswordChar = true;
            this.txb_pass.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txb_pass_KeyPress);
            // 
            // btt_login
            // 
            this.btt_login.AnimationHoverSpeed = 0.07F;
            this.btt_login.AnimationSpeed = 0.03F;
            this.btt_login.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.btt_login.BaseColor = System.Drawing.Color.WhiteSmoke;
            this.btt_login.BorderColor = System.Drawing.Color.Black;
            this.btt_login.BorderSize = 2;
            this.btt_login.CheckedBaseColor = System.Drawing.Color.Black;
            this.btt_login.CheckedBorderColor = System.Drawing.Color.Black;
            this.btt_login.CheckedForeColor = System.Drawing.Color.Black;
            this.btt_login.CheckedImage = null;
            this.btt_login.CheckedLineColor = System.Drawing.Color.DimGray;
            this.btt_login.DialogResult = System.Windows.Forms.DialogResult.None;
            this.btt_login.Enabled = false;
            this.btt_login.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(103)))), ((int)(((byte)(58)))), ((int)(((byte)(183)))));
            this.btt_login.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btt_login.ForeColor = System.Drawing.Color.Red;
            this.btt_login.Image = null;
            this.btt_login.ImageSize = new System.Drawing.Size(20, 20);
            this.btt_login.LineColor = System.Drawing.Color.Black;
            this.btt_login.Location = new System.Drawing.Point(389, 578);
            this.btt_login.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btt_login.Name = "btt_login";
            this.btt_login.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(103)))), ((int)(((byte)(58)))), ((int)(((byte)(183)))));
            this.btt_login.OnHoverBorderColor = System.Drawing.Color.White;
            this.btt_login.OnHoverForeColor = System.Drawing.Color.White;
            this.btt_login.OnHoverImage = null;
            this.btt_login.OnHoverLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(66)))), ((int)(((byte)(58)))), ((int)(((byte)(170)))));
            this.btt_login.OnPressedColor = System.Drawing.Color.Transparent;
            this.btt_login.Size = new System.Drawing.Size(173, 70);
            this.btt_login.TabIndex = 2;
            this.btt_login.Text = "Đăng nhập";
            this.btt_login.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.btt_login.Click += new System.EventHandler(this.btt_login_Click);
            // 
            // picbox_logo
            // 
            this.picbox_logo.BaseColor = System.Drawing.Color.White;
            this.picbox_logo.Image = ((System.Drawing.Image)(resources.GetObject("picbox_logo.Image")));
            this.picbox_logo.Location = new System.Drawing.Point(201, 39);
            this.picbox_logo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.picbox_logo.Name = "picbox_logo";
            this.picbox_logo.Size = new System.Drawing.Size(213, 199);
            this.picbox_logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picbox_logo.TabIndex = 6;
            this.picbox_logo.TabStop = false;
            this.picbox_logo.UseTransfarantBackground = false;
            // 
            // btt_exit
            // 
            this.btt_exit.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btt_exit.AnimationHoverSpeed = 0.07F;
            this.btt_exit.AnimationSpeed = 0.03F;
            this.btt_exit.IconColor = System.Drawing.Color.Red;
            this.btt_exit.IconSize = 15F;
            this.btt_exit.Location = new System.Drawing.Point(555, 1);
            this.btt_exit.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btt_exit.Name = "btt_exit";
            this.btt_exit.OnHoverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(103)))), ((int)(((byte)(58)))), ((int)(((byte)(183)))));
            this.btt_exit.OnHoverIconColor = System.Drawing.Color.White;
            this.btt_exit.OnPressedColor = System.Drawing.Color.Black;
            this.btt_exit.Size = new System.Drawing.Size(59, 43);
            this.btt_exit.TabIndex = 7;
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.WorkerReportsProgress = true;
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // label_connectionStatus
            // 
            this.label_connectionStatus.AutoSize = true;
            this.label_connectionStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_connectionStatus.ForeColor = System.Drawing.Color.Red;
            this.label_connectionStatus.Location = new System.Drawing.Point(135, 710);
            this.label_connectionStatus.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_connectionStatus.Name = "label_connectionStatus";
            this.label_connectionStatus.Size = new System.Drawing.Size(312, 24);
            this.label_connectionStatus.TabIndex = 8;
            this.label_connectionStatus.Text = "Đang cập nhật connection string";
            this.label_connectionStatus.Visible = false;
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(613, 768);
            this.Controls.Add(this.label_connectionStatus);
            this.Controls.Add(this.btt_exit);
            this.Controls.Add(this.picbox_logo);
            this.Controls.Add(this.btt_login);
            this.Controls.Add(this.txb_pass);
            this.Controls.Add(this.txb_account);
            this.Controls.Add(this.lb_pass);
            this.Controls.Add(this.lb_login);
            this.Controls.Add(this.lb_QLPK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "frmLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmLogin";
            this.Load += new System.EventHandler(this.frmLogin_Load);
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.frmLogin_KeyPress);
            ((System.ComponentModel.ISupportInitialize)(this.picbox_logo)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Guna.UI.WinForms.GunaLabel lb_QLPK;
        private Guna.UI.WinForms.GunaLabel lb_login;
        private Guna.UI.WinForms.GunaLabel lb_pass;
        public Guna.UI.WinForms.GunaAdvenceButton btt_login;
        private Guna.UI.WinForms.GunaCirclePictureBox picbox_logo;
        public Guna.UI.WinForms.GunaTextBox txb_pass;
        public Guna.UI.WinForms.GunaControlBox btt_exit;
        public Guna.UI.WinForms.GunaTextBox txb_account;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label label_connectionStatus;
    }
}