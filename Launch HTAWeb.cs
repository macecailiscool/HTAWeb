using System;

class Program {
    static void Main() {
        string[] verbose_info = {
            "Setting up Internet Explorer runtime...",
            "Loading up HTA code...",
            "Exiting C# loader script..."
        };

        for (int i = 0; i < verbose_info.Length; i++) {
            Console.WriteLine(verbose_info[i]);
        }

        string hta_file = "htaweb.hta";

        Console.WriteLine("Launching HTA file...");

        System.Diagnostics.Process process = new System.Diagnostics.Process();
        process.StartInfo.FileName = hta_file;
        process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
        process.Start();
        process.WaitForExit();

        if (process.ExitCode != 0) {
            Console.WriteLine("Error launching HTA file.");
        }
    }
}
